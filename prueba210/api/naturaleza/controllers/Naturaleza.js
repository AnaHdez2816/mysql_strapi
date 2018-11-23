'use strict';

/**
 * Naturaleza.js controller
 *
 * @description: A set of functions called "actions" for managing `Naturaleza`.
 */

module.exports = {

  /**
   * Retrieve naturaleza records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.naturaleza.search(ctx.query);
    } else {
      return strapi.services.naturaleza.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a naturaleza record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.naturaleza.fetch(ctx.params);
  },

  /**
   * Count naturaleza records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.naturaleza.count(ctx.query);
  },

  /**
   * Create a/an naturaleza record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.naturaleza.add(ctx.request.body);
  },

  /**
   * Update a/an naturaleza record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.naturaleza.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an naturaleza record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.naturaleza.remove(ctx.params);
  },

  /**
   * Add relation to a/an naturaleza record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.naturaleza.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an naturaleza record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.naturaleza.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an naturaleza record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.naturaleza.removeRelation(ctx.params, ctx.request.body);
  }
};
