SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId=1
AND p.AnswerCount>=0
AND p.AnswerCount<=4
AND u.DownVotes=0
AND ph.CreationDate<=1497
AND v.CreationDate>=28
AND v.CreationDate<=1534
AND u.CreationDate<=1508

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;