SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE 

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;