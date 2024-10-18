SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 42
AND c.CreationDate >= 482
AND c.CreationDate <= 1102
AND u.CreationDate >= 574

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;