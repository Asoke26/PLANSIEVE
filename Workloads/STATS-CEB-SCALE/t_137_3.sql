SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE p.CommentCount >= 0
AND p.CommentCount <= 16
AND u.Reputation >= 459
AND b.Date <= 684

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId
AND p.Id = t.ExcerptPostId;