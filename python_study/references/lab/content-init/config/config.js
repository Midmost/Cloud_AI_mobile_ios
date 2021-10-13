exports.appSettings = {
    db: (function() {
        return process.env.MONGODB_CONNECTION || 'mongodb://cmdb-jhj:MprH40hSwLG1uQegYZqNXjEeoLMMmixhhpY1ya84qfC94kyYsDnPKmIAsEV0gu1X0HdCxz5QnftQcDYOSYcmpA==@cmdb-jhj.mongo.cosmos.azure.com:10255/contentDB?ssl=true';  
    })()
};

// 코스모스 디비에서 가져와서 연결을 해주려고 하는...데? 뭐지...