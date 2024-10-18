SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score <= 56
AND p.ViewCount >= 717.0
AND p.ViewCount <= 4200.0
AND p.AnswerCount <= 8.0
AND u.DownVotes >= 56

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;