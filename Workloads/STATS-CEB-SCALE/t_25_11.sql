SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
users u
WHERE u.UpVotes >= 368
AND c.CreationDate >= 498
AND c.CreationDate <= 1306
AND u.CreationDate >= 861

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.OwnerUserId = u.Id;