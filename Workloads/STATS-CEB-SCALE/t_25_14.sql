SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 57
AND c.CreationDate >= 84
AND c.CreationDate <= 1149
AND u.CreationDate >= 512

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;