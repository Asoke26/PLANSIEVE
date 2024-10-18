SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 17
AND c.CreationDate >= 433
AND c.CreationDate <= 1216
AND u.CreationDate >= 247

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;