SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 6.0
AND u.DownVotes = 104
AND ph.CreationDate <= 1205
AND v.CreationDate >= 494
AND v.CreationDate <= 1162
AND u.CreationDate <= 949

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;