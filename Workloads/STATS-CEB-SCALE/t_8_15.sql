SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph
WHERE p.CommentCount >= 7
AND p.CommentCount <= 35

AND p.Id = c.PostId
AND p.Id = ph.PostId;