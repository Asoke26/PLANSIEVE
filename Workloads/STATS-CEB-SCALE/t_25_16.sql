SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 224
AND c.CreationDate >= 1390
AND c.CreationDate <= 1494
AND u.CreationDate >= 148

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;