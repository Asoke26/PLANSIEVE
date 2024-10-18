SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 18
AND c.CreationDate >= 890
AND c.CreationDate <= 1020
AND u.CreationDate >= 635

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;