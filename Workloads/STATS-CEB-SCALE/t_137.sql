SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE p.CommentCount>=0
AND p.CommentCount<=13
AND u.Reputation>=1
AND b.Date<=1537

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId
AND p.Id = t.ExcerptPostId;