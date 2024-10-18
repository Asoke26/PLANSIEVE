SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 174
AND c.CreationDate >= 162
AND c.CreationDate <= 1362
AND u.CreationDate >= 258

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;