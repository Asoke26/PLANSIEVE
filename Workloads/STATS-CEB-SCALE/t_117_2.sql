SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 24.0
AND u.DownVotes = 42
AND ph.CreationDate <= 822
AND v.CreationDate >= 724
AND v.CreationDate <= 967
AND u.CreationDate <= 1198

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;