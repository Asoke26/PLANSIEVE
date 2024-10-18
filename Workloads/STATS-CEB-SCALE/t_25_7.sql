SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 613
AND c.CreationDate >= 257
AND c.CreationDate <= 1301
AND u.CreationDate >= 967

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;