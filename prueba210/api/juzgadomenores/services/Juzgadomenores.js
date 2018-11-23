'use strict';

/**
 * Juzgadomenores.js service
 *
 * @description: A set of functions similar to controller's actions to avoid code duplication.
 */

// Public dependencies.
const _ = require('lodash');

// Strapi utilities.
const utils = require('strapi-hook-bookshelf/lib/utils/');

module.exports = {

  /**
   * Promise to fetch all juzgadomenores.
   *
   * @return {Promise}
   */

  fetchAll: (params) => {
    // Convert `params` object to filters compatible with Bookshelf.
    const filters = strapi.utils.models.convertParams('juzgadomenores', params);
    // Select field to populate.
    const populate = Juzgadomenores.associations
      .filter(ast => ast.autoPopulate !== false)
      .map(ast => ast.alias);

    return Juzgadomenores.query(function(qb) {
      _.forEach(filters.where, (where, key) => {
        if (_.isArray(where.value) && where.symbol !== 'IN') {
          for (const value in where.value) {
            qb[value ? 'where' : 'orWhere'](key, where.symbol, where.value[value])
          }
        } else {
          qb.where(key, where.symbol, where.value);
        }
      });

      if (filters.sort) {
        qb.orderBy(filters.sort.key, filters.sort.order);
      }

      qb.offset(filters.start);
      qb.limit(filters.limit);
    }).fetchAll({
      withRelated: populate
    });
  },

  /**
   * Promise to fetch a/an juzgadomenores.
   *
   * @return {Promise}
   */

  fetch: (params) => {
    // Select field to populate.
    const populate = Juzgadomenores.associations
      .filter(ast => ast.autoPopulate !== false)
      .map(ast => ast.alias);

    return Juzgadomenores.forge(_.pick(params, 'id')).fetch({
      withRelated: populate
    });
  },

  /**
   * Promise to count a/an juzgadomenores.
   *
   * @return {Promise}
   */

  count: (params) => {
    // Convert `params` object to filters compatible with Bookshelf.
    const filters = strapi.utils.models.convertParams('juzgadomenores', params);

    return Juzgadomenores.query(function(qb) {
      _.forEach(filters.where, (where, key) => {
        if (_.isArray(where.value)) {
          for (const value in where.value) {
            qb[value ? 'where' : 'orWhere'](key, where.symbol, where.value[value])
          }
        } else {
          qb.where(key, where.symbol, where.value);
        }
      });
    }).count();
  },

  /**
   * Promise to add a/an juzgadomenores.
   *
   * @return {Promise}
   */

  add: async (values) => {
    // Extract values related to relational data.
    const relations = _.pick(values, Juzgadomenores.associations.map(ast => ast.alias));
    const data = _.omit(values, Juzgadomenores.associations.map(ast => ast.alias));

    // Create entry with no-relational data.
    const entry = await Juzgadomenores.forge(data).save();

    // Create relational data and return the entry.
    return Juzgadomenores.updateRelations({ id: entry.id , values: relations });
  },

  /**
   * Promise to edit a/an juzgadomenores.
   *
   * @return {Promise}
   */

  edit: async (params, values) => {
    // Extract values related to relational data.
    const relations = _.pick(values, Juzgadomenores.associations.map(ast => ast.alias));
    const data = _.omit(values, Juzgadomenores.associations.map(ast => ast.alias));

    // Create entry with no-relational data.
    const entry = Juzgadomenores.forge(params).save(data);

    // Create relational data and return the entry.
    return Juzgadomenores.updateRelations(Object.assign(params, { values: relations }));
  },

  /**
   * Promise to remove a/an juzgadomenores.
   *
   * @return {Promise}
   */

  remove: async (params) => {
    params.values = {};
    Juzgadomenores.associations.map(association => {
      switch (association.nature) {
        case 'oneWay':
        case 'oneToOne':
        case 'manyToOne':
        case 'oneToManyMorph':
          params.values[association.alias] = null;
          break;
        case 'oneToMany':
        case 'manyToMany':
        case 'manyToManyMorph':
          params.values[association.alias] = [];
          break;
        default:
      }
    });

    await Juzgadomenores.updateRelations(params);

    return Juzgadomenores.forge(params).destroy();
  },

  /**
   * Promise to search a/an juzgadomenores.
   *
   * @return {Promise}
   */

  search: async (params) => {
    // Convert `params` object to filters compatible with Bookshelf.
    const filters = strapi.utils.models.convertParams('juzgadomenores', params);
    // Select field to populate.
    const populate = Juzgadomenores.associations
      .filter(ast => ast.autoPopulate !== false)
      .map(ast => ast.alias);

    const associations = Juzgadomenores.associations.map(x => x.alias);
    const searchText = Object.keys(Juzgadomenores._attributes)
      .filter(attribute => attribute !== Juzgadomenores.primaryKey && !associations.includes(attribute))
      .filter(attribute => ['string', 'text'].includes(Juzgadomenores._attributes[attribute].type));

    const searchNoText = Object.keys(Juzgadomenores._attributes)
      .filter(attribute => attribute !== Juzgadomenores.primaryKey && !associations.includes(attribute))
      .filter(attribute => !['string', 'text', 'boolean', 'integer', 'decimal', 'float'].includes(Juzgadomenores._attributes[attribute].type));

    const searchInt = Object.keys(Juzgadomenores._attributes)
      .filter(attribute => attribute !== Juzgadomenores.primaryKey && !associations.includes(attribute))
      .filter(attribute => ['integer', 'decimal', 'float'].includes(Juzgadomenores._attributes[attribute].type));

    const searchBool = Object.keys(Juzgadomenores._attributes)
      .filter(attribute => attribute !== Juzgadomenores.primaryKey && !associations.includes(attribute))
      .filter(attribute => ['boolean'].includes(Juzgadomenores._attributes[attribute].type));

    const query = (params._q || '').replace(/[^a-zA-Z0-9.-\s]+/g, '');

    return Juzgadomenores.query(qb => {
      // Search in columns which are not text value.
      searchNoText.forEach(attribute => {
        qb.orWhereRaw(`LOWER(${attribute}) LIKE '%${_.toLower(query)}%'`);
      });

      if (!_.isNaN(_.toNumber(query))) {
        searchInt.forEach(attribute => {
          qb.orWhereRaw(`${attribute} = ${_.toNumber(query)}`);
        });
      }

      if (query === 'true' || query === 'false') {
        searchBool.forEach(attribute => {
          qb.orWhereRaw(`${attribute} = ${_.toNumber(query === 'true')}`);
        });
      }

      // Search in columns with text using index.
      switch (Juzgadomenores.client) {
        case 'pg': {
          const searchQuery = searchText.map(attribute =>
            _.toLower(attribute) === attribute
              ? `to_tsvector(${attribute})`
              : `to_tsvector('${attribute}')`
          );

          qb.orWhereRaw(`${searchQuery.join(' || ')} @@ to_tsquery(?)`, query);
          break;
        }
        default:
          qb.orWhereRaw(`MATCH(${searchText.join(',')}) AGAINST(? IN BOOLEAN MODE)`, `*${query}*`);
          break;
      }

      if (filters.sort) {
        qb.orderBy(filters.sort.key, filters.sort.order);
      }

      if (filters.skip) {
        qb.offset(_.toNumber(filters.skip));
      }

      if (filters.limit) {
        qb.limit(_.toNumber(filters.limit));
      }
    }).fetchAll({
      width: populate
    });
  }
};
