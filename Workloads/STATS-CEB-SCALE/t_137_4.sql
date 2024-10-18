SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE 

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId
AND p.Id = t.ExcerptPostId;