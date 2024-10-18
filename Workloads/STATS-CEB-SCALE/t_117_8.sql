SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.AnswerCount >= 2.0
AND p.AnswerCount <= 24.0
AND u.DownVotes = 145
AND ph.CreationDate <= 1315
AND v.CreationDate >= 1009
AND v.CreationDate <= 1450
AND u.CreationDate <= 881

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;