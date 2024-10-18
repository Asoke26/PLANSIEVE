SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.AnswerCount >= 10.0
AND p.AnswerCount <= 21.0
AND u.DownVotes = 114
AND ph.CreationDate <= 1367
AND v.CreationDate >= 377
AND v.CreationDate <= 1137
AND u.CreationDate <= 115

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;