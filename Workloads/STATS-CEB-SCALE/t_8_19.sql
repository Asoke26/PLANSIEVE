SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 9
AND p.CommentCount <= 25

AND p.Id = c.PostId
AND p.Id = ph.PostId;