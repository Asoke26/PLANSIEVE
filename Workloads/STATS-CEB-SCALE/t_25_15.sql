SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 99
AND c.CreationDate >= 491
AND c.CreationDate <= 1544
AND u.CreationDate >= 1184

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;