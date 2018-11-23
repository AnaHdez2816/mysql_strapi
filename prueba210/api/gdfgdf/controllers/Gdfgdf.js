'use strict';

/**
 * Gdfgdf.js controller
 *
 * @description: A set of functions called "actions" for managing `Gdfgdf`.
 */

module.exports = {

  /**
   * Retrieve gdfgdf records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.gdfgdf.search(ctx.query);
    } else {
      return strapi.services.gdfgdf.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a gdfgdf record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.gdfgdf.fetch(ctx.params);
  },

  /**
   * Count gdfgdf records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.gdfgdf.count(ctx.query);
  },

  /**
   * Create a/an gdfgdf record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.gdfgdf.add(ctx.request.body);
  },

  /**
   * Update a/an gdfgdf record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.gdfgdf.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an gdfgdf record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.gdfgdf.remove(ctx.params);
  },

  /**
   * Add relation to a/an gdfgdf record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.gdfgdf.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an gdfgdf record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.gdfgdf.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an gdfgdf record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.gdfgdf.removeRelation(ctx.params, ctx.request.body);
  }
};
