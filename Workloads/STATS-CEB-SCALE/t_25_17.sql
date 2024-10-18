SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 148
AND c.CreationDate >= 224
AND c.CreationDate <= 1452
AND u.CreationDate >= 1262

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;