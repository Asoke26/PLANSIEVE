SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 12
AND p.Score >= 109
AND u.Reputation >= 615
AND u.UpVotes >= 73
AND u.UpVotes <= 185

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;