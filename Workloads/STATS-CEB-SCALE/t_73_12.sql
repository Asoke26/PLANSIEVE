SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score <= 98
AND p.ViewCount >= 426.0
AND p.ViewCount <= 5372.0
AND p.AnswerCount <= 1.0
AND u.DownVotes >= 15

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;