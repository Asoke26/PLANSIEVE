SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.AnswerCount >= 7.0
AND p.AnswerCount <= 13.0
AND u.DownVotes = 25
AND ph.CreationDate <= 962
AND v.CreationDate >= 429
AND v.CreationDate <= 554
AND u.CreationDate <= 1192

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;