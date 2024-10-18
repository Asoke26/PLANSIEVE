SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 151
AND c.CreationDate >= 669
AND c.CreationDate <= 1501
AND u.CreationDate >= 887

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;