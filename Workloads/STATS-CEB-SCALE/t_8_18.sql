SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 6
AND p.CommentCount <= 13

AND p.Id = c.PostId
AND p.Id = ph.PostId;