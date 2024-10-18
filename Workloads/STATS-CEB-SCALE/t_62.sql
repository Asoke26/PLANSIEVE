SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE c.Score=0
AND p.AnswerCount>=0
AND p.AnswerCount<=4
AND pl.LinkTypeId=1
AND v.BountyAmount<=100
AND u.Views<=160
AND p.CreationDate<=1543
AND pl.CreationDate>=258
AND v.CreationDate>=2
AND v.CreationDate<=1542
AND u.CreationDate>=35
AND u.CreationDate<=1481

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;