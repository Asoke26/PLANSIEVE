SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 15
AND p.CommentCount <= 34

AND p.Id = c.PostId
AND p.Id = ph.PostId;