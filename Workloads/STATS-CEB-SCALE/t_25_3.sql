SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 212
AND c.CreationDate >= 662
AND c.CreationDate <= 1146
AND u.CreationDate >= 301

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;