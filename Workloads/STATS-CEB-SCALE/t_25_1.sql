SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 240
AND c.CreationDate >= 625
AND c.CreationDate <= 1457
AND u.CreationDate >= 1160

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;