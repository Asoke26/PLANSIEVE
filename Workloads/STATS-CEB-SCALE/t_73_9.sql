SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score <= 41
AND p.ViewCount >= 1547.0
AND p.ViewCount <= 1674.0
AND p.AnswerCount <= 21.0
AND u.DownVotes >= 10

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;