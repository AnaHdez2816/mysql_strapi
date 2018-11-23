'use strict';

/**
 * Juzgadomenores.js controller
 *
 * @description: A set of functions called "actions" for managing `Juzgadomenores`.
 */

module.exports = {

  /**
   * Retrieve juzgadomenores records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.juzgadomenores.search(ctx.query);
    } else {
      return strapi.services.juzgadomenores.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a juzgadomenores record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.juzgadomenores.fetch(ctx.params);
  },

  /**
   * Count juzgadomenores records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.juzgadomenores.count(ctx.query);
  },

  /**
   * Create a/an juzgadomenores record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.juzgadomenores.add(ctx.request.body);
  },

  /**
   * Update a/an juzgadomenores record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.juzgadomenores.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an juzgadomenores record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.juzgadomenores.remove(ctx.params);
  },

  /**
   * Add relation to a/an juzgadomenores record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.juzgadomenores.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an juzgadomenores record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.juzgadomenores.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an juzgadomenores record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.juzgadomenores.removeRelation(ctx.params, ctx.request.body);
  }
};
