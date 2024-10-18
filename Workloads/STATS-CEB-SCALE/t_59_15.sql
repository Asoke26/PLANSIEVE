SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE u.Views <= 839
AND u.CreationDate >= 891
AND u.CreationDate <= 1175

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;