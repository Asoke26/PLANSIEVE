SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.ViewCount>=0
AND p.AnswerCount>=0
AND p.AnswerCount<=5
AND ph.PostHistoryTypeId=2
AND v.BountyAmount>=0
AND v.BountyAmount<=100
AND u.Views>=0
AND u.Views<=13
AND ph.CreationDate>=136
AND ph.CreationDate<=1540
AND v.CreationDate>=34

AND v.UserId = u.Id
AND c.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;