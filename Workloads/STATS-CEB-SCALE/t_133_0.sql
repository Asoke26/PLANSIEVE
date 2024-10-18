SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE c.Score = 9
AND p.Score >= 38
AND p.CommentCount >= 10
AND p.CommentCount <= 32

AND u.Id = ph.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = c.UserId;