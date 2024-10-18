SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.AnswerCount >= 2.0
AND p.AnswerCount <= 42.0
AND u.DownVotes = 45
AND ph.CreationDate <= 850
AND v.CreationDate >= 373
AND v.CreationDate <= 960
AND u.CreationDate <= 640

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;