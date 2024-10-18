SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE u.Views <= 5
AND u.CreationDate >= 499
AND u.CreationDate <= 1075

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;