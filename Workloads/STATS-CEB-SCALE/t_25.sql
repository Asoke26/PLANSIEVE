SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes>=0
AND c.CreationDate>=29
AND c.CreationDate<=1525
AND u.CreationDate>=60

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;