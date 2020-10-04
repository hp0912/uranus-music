module.exports = {
    publicPath: process.env.NODE_ENV === 'production' ? '/uranus-music/' : '/',
    productionSourceMap: false,
    pwa: {
        workboxOptions: {
            skipWaiting: true
        }
    }
};
