SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score = 6
AND p.AnswerCount >= 1.0
AND p.AnswerCount <= 7.0
AND pl.LinkTypeId = 1
AND v.BountyAmount <= 500.0
AND u.Views <= 111
AND p.CreationDate <= 1442
AND pl.CreationDate >= 1141
AND v.CreationDate >= 511
AND v.CreationDate <= 1136
AND u.CreationDate >= 477
AND u.CreationDate <= 655

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;