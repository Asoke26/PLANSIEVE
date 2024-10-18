SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score <= 164
AND p.ViewCount >= 306.0
AND p.ViewCount <= 10329.0
AND p.AnswerCount <= 58.0
AND u.DownVotes >= 59

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;