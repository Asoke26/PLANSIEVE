SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 8
AND p.CommentCount <= 34

AND p.Id = c.PostId
AND p.Id = ph.PostId;