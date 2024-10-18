SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 12
AND p.CommentCount <= 26

AND p.Id = c.PostId
AND p.Id = ph.PostId;