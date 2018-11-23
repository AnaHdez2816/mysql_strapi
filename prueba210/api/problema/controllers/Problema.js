'use strict';

/**
 * Problema.js controller
 *
 * @description: A set of functions called "actions" for managing `Problema`.
 */

module.exports = {

  /**
   * Retrieve problema records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.problema.search(ctx.query);
    } else {
      return strapi.services.problema.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a problema record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.problema.fetch(ctx.params);
  },

  /**
   * Count problema records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.problema.count(ctx.query);
  },

  /**
   * Create a/an problema record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.problema.add(ctx.request.body);
  },

  /**
   * Update a/an problema record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.problema.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an problema record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.problema.remove(ctx.params);
  },

  /**
   * Add relation to a/an problema record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.problema.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an problema record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.problema.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an problema record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.problema.removeRelation(ctx.params, ctx.request.body);
  }
};
