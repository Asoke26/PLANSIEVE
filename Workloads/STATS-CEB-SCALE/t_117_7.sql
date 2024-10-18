SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 28.0
AND u.DownVotes = 0
AND ph.CreationDate <= 802
AND v.CreationDate >= 32
AND v.CreationDate <= 224
AND u.CreationDate <= 115

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;