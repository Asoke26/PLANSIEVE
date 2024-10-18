SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE c.Score=2
AND p.AnswerCount>=0
AND p.AnswerCount<=9
AND v.BountyAmount>=0
AND u.UpVotes<=230
AND p.CreationDate>=28
AND p.CreationDate<=1526
AND ph.CreationDate<=1533
AND v.CreationDate>=22
AND u.CreationDate>=92
AND u.CreationDate<=1515

AND v.UserId = u.Id
AND c.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;