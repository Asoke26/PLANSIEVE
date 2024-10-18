SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 326
AND c.CreationDate >= 381
AND c.CreationDate <= 569
AND u.CreationDate >= 215

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;