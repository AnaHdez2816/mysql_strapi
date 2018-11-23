'use strict';

/**
 * Municipio.js controller
 *
 * @description: A set of functions called "actions" for managing `Municipio`.
 */

module.exports = {

  /**
   * Retrieve municipio records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.municipio.search(ctx.query);
    } else {
      return strapi.services.municipio.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a municipio record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.municipio.fetch(ctx.params);
  },

  /**
   * Count municipio records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.municipio.count(ctx.query);
  },

  /**
   * Create a/an municipio record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.municipio.add(ctx.request.body);
  },

  /**
   * Update a/an municipio record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.municipio.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an municipio record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.municipio.remove(ctx.params);
  },

  /**
   * Add relation to a/an municipio record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.municipio.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an municipio record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.municipio.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an municipio record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.municipio.removeRelation(ctx.params, ctx.request.body);
  }
};
