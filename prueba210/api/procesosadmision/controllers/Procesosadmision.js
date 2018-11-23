'use strict';

/**
 * Procesosadmision.js controller
 *
 * @description: A set of functions called "actions" for managing `Procesosadmision`.
 */

module.exports = {

  /**
   * Retrieve procesosadmision records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.procesosadmision.search(ctx.query);
    } else {
      return strapi.services.procesosadmision.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a procesosadmision record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.procesosadmision.fetch(ctx.params);
  },

  /**
   * Count procesosadmision records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.procesosadmision.count(ctx.query);
  },

  /**
   * Create a/an procesosadmision record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.procesosadmision.add(ctx.request.body);
  },

  /**
   * Update a/an procesosadmision record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.procesosadmision.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an procesosadmision record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.procesosadmision.remove(ctx.params);
  },

  /**
   * Add relation to a/an procesosadmision record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.procesosadmision.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an procesosadmision record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.procesosadmision.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an procesosadmision record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.procesosadmision.removeRelation(ctx.params, ctx.request.body);
  }
};
