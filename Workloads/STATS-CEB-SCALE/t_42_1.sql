SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 3
AND p.Score >= -5
AND u.Reputation >= 792
AND u.UpVotes >= 200
AND u.UpVotes <= 337

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;