exports.ensureAuthenticated = (req, res, next) => {
  if (req.isAuthenticated()) {
    return next();
  }
  // 401 Unauthorized. The client is unauthenticated and must provide
  // valid credentials to access the requested resource.
  return res.sendStatus(401);
};

exports.ensureAdmin = (req, res, next) => {
  if (!req.isAuthenticated()) {
    return res.sendStatus(401);
  }
  if (!req.user.admin_status) {
    // 403 Forbidden. The server understands who the client is,
    // but refuses to authorize access to the resource.
    return res.sendStatus(403);
  }
  return next();
};
