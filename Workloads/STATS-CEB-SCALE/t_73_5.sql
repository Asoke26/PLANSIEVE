SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score <= 55
AND p.ViewCount >= 1617.0
AND p.ViewCount <= 2439.0
AND p.AnswerCount <= 21.0
AND u.DownVotes >= 91

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;