SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 13
AND p.CommentCount <= 17

AND p.Id = c.PostId
AND p.Id = ph.PostId;