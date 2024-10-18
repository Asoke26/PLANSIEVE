SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score <= 18
AND p.ViewCount >= 1110.0
AND p.ViewCount <= 41111.0
AND p.AnswerCount <= 25.0
AND u.DownVotes >= 119

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;