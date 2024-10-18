SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 226
AND c.CreationDate >= 1220
AND c.CreationDate <= 1382
AND u.CreationDate >= 1222

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;