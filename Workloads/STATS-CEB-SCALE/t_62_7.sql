SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 5
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 25.0
AND pl.LinkTypeId = 1
AND v.BountyAmount <= 400.0
AND u.Views <= 109
AND p.CreationDate <= 1465
AND pl.CreationDate >= 325
AND v.CreationDate >= 42
AND v.CreationDate <= 859
AND u.CreationDate >= 567
AND u.CreationDate <= 1370

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;