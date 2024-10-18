SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.AnswerCount >= 2.0
AND p.AnswerCount <= 56.0
AND u.DownVotes = 63
AND ph.CreationDate <= 1246
AND v.CreationDate >= 165
AND v.CreationDate <= 1226
AND u.CreationDate <= 1450

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;